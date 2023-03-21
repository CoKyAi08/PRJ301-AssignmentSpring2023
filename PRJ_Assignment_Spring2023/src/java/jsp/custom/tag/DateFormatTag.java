/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package jsp.custom.tag;

import java.text.SimpleDateFormat;
import java.util.Date;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author minh0
 */
public class DateFormatTag extends SimpleTagSupport {
    
    private String date;

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public void doTag() throws JspException, IOException {
        LocalDate localDate = LocalDate.parse(date);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd MMMM yyyy");
        String formattedDate = localDate.format(formatter);
        getJspContext().getOut().write(formattedDate);
    }

}
