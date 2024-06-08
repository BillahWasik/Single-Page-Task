using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using Single_Page_Task.Models;

namespace Single_Page_Task.Controllers
{
    public class HomeController : Controller
    {
        private readonly string connectionString = "Server=.;Database=SinglePageTaskDB;Trusted_Connection=True;MultipleActiveResultSets=true; Encrypt=False; connect timeout=100000;";

        public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public JsonResult GetCustomers(string customerType)
        {
            var customers = new List<Customer>();
            string query = customerType == "Corporate"
                ? "SELECT CorporateCustomerID AS CustomerID, CorporateCustomerName AS CustomerName FROM Corporate_Customer_Tbl"
                : "SELECT IndividualCustomerID AS CustomerID, IndividualCustomerName AS CustomerName FROM Individual_Customer_Tbl";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            customers.Add(new Customer
                            {
                                CustomerID = (int)dr["CustomerID"],
                                CustomerName = dr["CustomerName"].ToString()
                            });
                        }
                    }
                }
            }
            return Json(customers);
        }

        [HttpGet]
        public JsonResult GetProductsServices()
        {
            var productsServices = new List<ProductService>();
            string query = "SELECT ProductServiceID, ProductServiceName, Unit FROM Products_Service_Tbl";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            productsServices.Add(new ProductService
                            {
                                ProductServiceID = (int)dr["ProductServiceID"],
                                ProductServiceName = dr["ProductServiceName"].ToString(),
                                Unit = dr["Unit"].ToString()
                            });
                        }
                    }
                }
            }
            return Json(productsServices);
        }

        [HttpPost]
        public JsonResult SaveMeetingMinutes([FromBody] MeetingMinutesViewModel model)
        {
            int masterId;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Meeting_Minutes_Master_Save_SP", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@CustomerType", model.CustomerType);
                    cmd.Parameters.AddWithValue("@CustomerID", model.CustomerID);
                    cmd.Parameters.AddWithValue("@MeetingDate", model.MeetingDate);
                    cmd.Parameters.AddWithValue("@MeetingTime", model.MeetingTime);

                    SqlParameter outputParam = new SqlParameter("@GeneratedID", SqlDbType.Int);
                    outputParam.Direction = ParameterDirection.Output;
                    cmd.Parameters.Add(outputParam);

                    con.Open();
                    cmd.ExecuteNonQuery();

                    masterId = (int)outputParam.Value;
                }

                foreach (var detail in model.MeetingDetails)
                {
                    using (SqlCommand cmd = new SqlCommand("Meeting_Minutes_Details_Save_SP", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@MeetingMinutesMasterID", masterId);
                        cmd.Parameters.AddWithValue("@ProductServiceID", detail.ProductServiceID);
                        cmd.Parameters.AddWithValue("@Quantity", detail.Quantity);
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            return Json(new { success = true });
        }

    }
}
