/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.shopping;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.utlis.DBUtils;

/**
 *
 * @author Min
 */
public class InstrumentsDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    private static final String SEARCH = "SELECT id, name, image, price FROM Instruments WHERE name like ?";

    public List<InstrumentsDTO> getAllIns() {
        List<InstrumentsDTO> list = new ArrayList<>();
        String query = "select * from dbo.Instruments\n"
                + "order by id";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                InstrumentsDTO o = new InstrumentsDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getFloat(4));
                list.add(o);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
}
