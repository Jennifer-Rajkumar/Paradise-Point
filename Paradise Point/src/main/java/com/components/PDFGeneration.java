package com.components;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import com.itextpdf.io.image.ImageData;
import com.itextpdf.io.image.ImageDataFactory;
import com.itextpdf.kernel.color.Color;
import com.itextpdf.kernel.color.DeviceRgb;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.border.Border;
import com.itextpdf.layout.element.Cell;
import com.itextpdf.layout.element.Table;
import com.itextpdf.layout.property.HorizontalAlignment;
import com.itextpdf.layout.property.TextAlignment;
import com.itextpdf.text.*;
import com.itextpdf.text.TabStop.Alignment;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.element.Div;
import com.itextpdf.layout.element.Image;
import com.model.HallDTO;
import com.model.ServiceDTO;
import com.model.UserDTO;
import com.model.CompKey;

public class PDFGeneration {
	public void generatePDF(UserDTO user, int purchaseid, HallDTO hall, List<ServiceDTO> service, double totalcost) {
		// Document doc = new Document();
		try {
			String filename = Integer.toString(purchaseid) + ".pdf";
			PdfDocument pdfDoc = new PdfDocument(new PdfWriter(filename));
			Document doc = new Document(pdfDoc);
			
			System.out.println("PDF created.");
			// doc.open();

			int indentation = 0;
			ImageData data = ImageDataFactory.create("Paradise Point.png");
			Image image = new Image(data);
			image.setWidthPercent(100);
			doc.add(image);
			
			doc.add(new Paragraph("\n"));
			
			float colWidth[] = {80,300,80,80};
			
			Table cus = new Table(colWidth);
			com.itextpdf.kernel.color.Color myColor = new DeviceRgb(85, 107, 47);
			com.itextpdf.kernel.color.Color myColor2 = new DeviceRgb(219, 112, 147);
			
			cus.addCell(new Cell(0,4).add("Invoice Details").setBold().setBorder(Border.NO_BORDER).setFontColor(Color.DARK_GRAY).setFontSize(13));
			 SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
			    Date date = new Date();  
			cus.addCell(new Cell().add("Name:").setBorder(Border.NO_BORDER).setFontColor(Color.GRAY).setBold());
			cus.addCell(new Cell().add(user.getUsername()).setBorder(Border.NO_BORDER));
			cus.addCell(new Cell().add("Date:").setBorder(Border.NO_BORDER).setFontColor(Color.GRAY).setBold());
			cus.addCell(new Cell().add(formatter.format(date)).setBorder(Border.NO_BORDER));
			cus.addCell(new Cell().add("Mobile No:").setBorder(Border.NO_BORDER).setFontColor(Color.GRAY).setBold());
			cus.addCell(new Cell().add("+91 7094250504").setBorder(Border.NO_BORDER));
			cus.addCell(new Cell().add("Place :").setBorder(Border.NO_BORDER).setFontColor(Color.GRAY).setBold());
			cus.addCell(new Cell().add("Chennai").setBorder(Border.NO_BORDER));
			
			doc.add(cus);
			doc.add(new Paragraph("\n"));
	
			doc.add(new Paragraph("Hall Details").setBold().setBorder(Border.NO_BORDER).setFontColor(Color.DARK_GRAY).setFontSize(13));
			
			float[] infoWidth = {182,182,180};
			
			Table info = new Table(infoWidth);
			info.addCell(new Cell().add("Hall Cost").setBold().setBackgroundColor(new DeviceRgb(255, 179, 187)).setFontColor(Color.WHITE));
			info.addCell(new Cell().add("Accomodation").setBold().setBackgroundColor(new DeviceRgb(255, 179, 187)).setFontColor(Color.WHITE));
			info.addCell(new Cell().add("AC Cost").setBold().setBackgroundColor(new DeviceRgb(255, 179, 187)).setFontColor(Color.WHITE));
			
			info.addCell(new Cell().add(Double.toString(hall.getHallcost())));
			info.addCell(new Cell().add(Integer.toString(hall.getAccomodation())));
			info.addCell(new Cell().add(Double.toString(hall.getAC())));
			
			
			doc.add(info);
			doc.add(new Paragraph("\n"));
			doc.add(new Paragraph("Additional services included").setBold().setBorder(Border.NO_BORDER).setFontColor(Color.DARK_GRAY).setFontSize(13));
						float[] serviceWidth = {180,180,180};
			Table servicetab = new Table(serviceWidth);
			servicetab.addCell(new Cell().add("S.No").setBold().setBackgroundColor(new DeviceRgb(255, 179, 187)).setFontColor(Color.WHITE));
			servicetab.addCell(new Cell().add("Service Name").setBold().setBackgroundColor(new DeviceRgb(255, 179, 187)).setFontColor(Color.WHITE));
			servicetab.addCell(new Cell().add("Service Cost").setBold().setBackgroundColor(new DeviceRgb(255, 179, 187)).setFontColor(Color.WHITE).setTextAlignment(TextAlignment.RIGHT));
			
			for(int i=0;i<service.size();i++)
			{
				if(i%2==0)
				{
					servicetab.addCell(new Cell().add(Integer.toString(i+1)));
					servicetab.addCell(new Cell().add(service.get(i).getServicename()));
					servicetab.addCell(new Cell().add(Double.toString(service.get(i).getServicecost())).setTextAlignment(TextAlignment.RIGHT));
					
				}
				else 
				{
					servicetab.addCell(new Cell().add(Integer.toString(i+1)).setBackgroundColor(new DeviceRgb(242, 242, 242)));
					servicetab.addCell(new Cell().add(service.get(i).getServicename()).setBackgroundColor(new DeviceRgb(242, 242, 242)));
					servicetab.addCell(new Cell().add(Double.toString(service.get(i).getServicecost())).setTextAlignment(TextAlignment.RIGHT).setBackgroundColor(new DeviceRgb(242, 242, 242)));
				}
				
				
			}
			
			servicetab.addCell(new Cell().add("").setBackgroundColor(new DeviceRgb(255, 179, 187)).setFontColor(Color.WHITE).setTextAlignment(TextAlignment.RIGHT).setBorder(Border.NO_BORDER));
			servicetab.addCell(new Cell().add("Total Cost : ").setBold().setBackgroundColor(new DeviceRgb(255, 179, 187)).setFontColor(Color.WHITE).setTextAlignment(TextAlignment.RIGHT).setBorder(Border.NO_BORDER));
			servicetab.addCell(new Cell().add( Double.toString(totalcost)).setBold().setBackgroundColor(new DeviceRgb(255, 179, 187)).setFontColor(Color.WHITE).setTextAlignment(TextAlignment.RIGHT).setBorder(Border.NO_BORDER));

			doc.add(servicetab);
			
			doc.add(new Paragraph("\n"));
			doc.add(new Paragraph("(Admin Signature)").setTextAlignment(TextAlignment.RIGHT));
			
			ImageData data2= ImageDataFactory.create("sign.png");
			Image image2 = new Image(data2);
			
			image2.setWidthPercent(100);
			image2.setMarginLeft(440);
			
			doc.add(image2);
			
			doc.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

