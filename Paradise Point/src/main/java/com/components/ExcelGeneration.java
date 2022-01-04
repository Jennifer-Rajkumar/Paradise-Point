package com.components;


import java.io.FileOutputStream;
import java.util.List;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import com.model.UserOrders;
public class ExcelGeneration {
	
	
	public void WriteFile(List<UserOrders> orders) {
		try {
            			
			Workbook wb = new XSSFWorkbook();
			Sheet sheet = wb.createSheet("Today");
			
			XSSFRow rowhead = (XSSFRow) sheet.createRow((short)0);
			rowhead.createCell(0).setCellValue("S.No");
			rowhead.createCell(1).setCellValue("Username");
			rowhead.createCell(2).setCellValue("Purchase id");
			rowhead.createCell(3).setCellValue("Party name");
			rowhead.createCell(4).setCellValue("Hall no");
			rowhead.createCell(5).setCellValue("Date");
			rowhead.createCell(6).setCellValue("Cost");
			
			for(int i=1;i<=orders.size();i++) {
			    XSSFRow row = (XSSFRow) sheet.createRow((short)i);
                row.createCell(0).setCellValue(i);
			    row.createCell(1).setCellValue(orders.get(i-1).getUsername());
			    row.createCell(2).setCellValue(orders.get(i-1).getPurchaseid());
			    row.createCell(3).setCellValue(orders.get(i-1).getPartyname());
			    row.createCell(4).setCellValue(orders.get(i-1).getHallno());
			    row.createCell(5).setCellValue(orders.get(i-1).getDate());
			    row.createCell(6).setCellValue(orders.get(i-1).getCost());
			}
			
			FileOutputStream fos = new FileOutputStream("OrdersReport.xlsx");
			wb.write(fos);
			fos.close();
			
			System.out.println("Excel file has been generated successfully.");
		}
		catch (Exception e) {
			System.out.println(e);
		}
	}
}