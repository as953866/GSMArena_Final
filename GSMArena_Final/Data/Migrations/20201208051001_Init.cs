using System;
using System.IO;
using Microsoft.EntityFrameworkCore.Migrations;

namespace GSMArena_Final.Data.Migrations
{
    public partial class Init : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Blogs",
                columns: table => new
                {
                    BlogID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Title = table.Column<string>(maxLength: 100, nullable: false),
                    BlogText = table.Column<string>(maxLength: 1000, nullable: false),
                    BlogDate = table.Column<DateTime>(nullable: false),
                    Extension = table.Column<string>(maxLength: 20, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Blogs", x => x.BlogID);
                });

            migrationBuilder.CreateTable(
                name: "Companies",
                columns: table => new
                {
                    CompanyID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompanyName = table.Column<string>(maxLength: 100, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Companies", x => x.CompanyID);
                });

            migrationBuilder.CreateTable(
                name: "Mobiles",
                columns: table => new
                {
                    MobileID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    MobileName = table.Column<string>(maxLength: 200, nullable: false),
                    Network = table.Column<string>(maxLength: 400, nullable: true),
                    Launch = table.Column<string>(maxLength: 400, nullable: true),
                    Body = table.Column<string>(maxLength: 400, nullable: true),
                    Display = table.Column<string>(maxLength: 400, nullable: true),
                    Platform = table.Column<string>(maxLength: 400, nullable: true),
                    Memory = table.Column<string>(maxLength: 400, nullable: true),
                    MainCamera = table.Column<string>(maxLength: 400, nullable: true),
                    SelfieCamera = table.Column<string>(maxLength: 400, nullable: true),
                    Sound = table.Column<string>(maxLength: 400, nullable: true),
                    Comms = table.Column<string>(maxLength: 400, nullable: true),
                    Features = table.Column<string>(maxLength: 400, nullable: true),
                    Battery = table.Column<string>(maxLength: 400, nullable: true),
                    Misc = table.Column<string>(maxLength: 400, nullable: true),
                    Extension = table.Column<string>(maxLength: 20, nullable: false),
                    CompanyID = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Mobiles", x => x.MobileID);
                    table.ForeignKey(
                        name: "FK_Mobiles_Companies_CompanyID",
                        column: x => x.CompanyID,
                        principalTable: "Companies",
                        principalColumn: "CompanyID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "MobileReviews",
                columns: table => new
                {
                    ReviewID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(maxLength: 100, nullable: false),
                    Rating = table.Column<int>(nullable: false),
                    ReviewText = table.Column<string>(maxLength: 1000, nullable: false),
                    MobileID = table.Column<int>(nullable: false),
                    ReviewDate = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_MobileReviews", x => x.ReviewID);
                    table.ForeignKey(
                        name: "FK_MobileReviews_Mobiles_MobileID",
                        column: x => x.MobileID,
                        principalTable: "Mobiles",
                        principalColumn: "MobileID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_MobileReviews_MobileID",
                table: "MobileReviews",
                column: "MobileID");

            migrationBuilder.CreateIndex(
                name: "IX_Mobiles_CompanyID",
                table: "Mobiles",
                column: "CompanyID");

            var sqlFile = Path.Combine(".\\Scripts", @"records.sql");

            migrationBuilder.Sql(File.ReadAllText(sqlFile));
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Blogs");

            migrationBuilder.DropTable(
                name: "MobileReviews");

            migrationBuilder.DropTable(
                name: "Mobiles");

            migrationBuilder.DropTable(
                name: "Companies");
        }
    }
}
