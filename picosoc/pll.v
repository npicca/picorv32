module pll(								
        input  clock_in,						
        output global_clock,						
        output locked							
        );								
									
   wire        g_clock_int;						
   wire        g_lock_int;						
    									
   SB_PLL40_CORE #(							
                .FEEDBACK_PATH("SIMPLE"),				
                .DIVR(4'b0000),         // DIVR =  0			
                .DIVF(7'b0111010),      // DIVF = 58			
                .DIVQ(3'b101),          // DIVQ =  5			
                .FILTER_RANGE(3'b001)   // FILTER_RANGE = 1		
        ) uut (								
                .LOCK(g_lock_int),					
                .RESETB(1'b1),						
                .BYPASS(1'b0),						
                .REFERENCECLK(clock_in),				
                .PLLOUTGLOBAL(g_clock_int)				
                );							
									
   SB_GB clk_gb ( .USER_SIGNAL_TO_GLOBAL_BUFFER(g_clock_int)		
                  , .GLOBAL_BUFFER_OUTPUT(global_clock) );		
   									
   SB_GB lck_gb ( .USER_SIGNAL_TO_GLOBAL_BUFFER(g_lock_int)		
                  , .GLOBAL_BUFFER_OUTPUT(locked) );			
   									
endmodule
