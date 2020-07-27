/*	
 *	
 *  ChatStyling.m	
 *  ZDCChat	
 *	
 *  Created by Zendesk on 03/12/2014.	
 *	
 *  Copyright (c) 2016 Zendesk. All rights reserved.	
 *	
 *  By downloading or using the Zendesk Mobile SDK, You agree to the Zendesk Master	
 *  Subscription Agreement https://www.zendesk.com/company/customers-partners/#master-subscription-agreement and Application Developer and API License	
 *  Agreement https://www.zendesk.com/company/customers-partners/#application-developer-api-license-agreement and	
 *  acknowledge that such terms govern Your use of and access to the Mobile SDK.	
 *	
 */	


 #import "ChatStyling.h"	


 @implementation ChatStyling	


 + (void) applyStyling	
{	
    UIEdgeInsets insets;	

   
     insets = UIEdgeInsetsMake(10.0f, 15.0f, 0.0f, 15.0f);	
   

     insets = UIEdgeInsetsMake(10.0f, 15.0f, 0.0f, 15.0f);	
   

     insets = UIEdgeInsetsMake(10.0f, 15.0f, 10.0f, 15.0f);	
  

     ////////////////////////////////////////////////////////////////////////////////////////////////	
    // Style the chat cells	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

     insets = UIEdgeInsetsMake(10.0f, 70.0f , 10.0f, 20.0f);	
 

     insets = UIEdgeInsetsMake(8.0f, 75.0f , 7.0f, 15.0f);	
   
     insets = UIEdgeInsetsMake(8.0f, 55.0f, 7.0f, 30.0f);	
   

     insets = UIEdgeInsetsMake(10.0f, 20.0f, 10.0f, 20.0f);	
  

     insets = UIEdgeInsetsMake(10.0f, 20.0f, 10.0f, 20.0f);	
  

     ////////////////////////////////////////////////////////////////////////////////////////////////	
    // Style the chat text entry area	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

   
     ////////////////////////////////////////////////////////////////////////////////////////////////	
    // Style the chat UI background colors	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

     // set all view backgrounds transparent	
   

     // Set the base view background color	
   
    // [[ZDCChatUI appearance] setBackChatButtonImage:@"SampleBackground"];	

     ////////////////////////////////////////////////////////////////////////////////////////////////	
    // Custom chat background (static image)	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

     // set the base view background image name and anchor	
   

     //Customise the chat overlay icon	
    //[[ZDCChatOverlay appearance] setOverlayTintColor:[UIColor redColor]];	
  

     ////////////////////////////////////////////////////////////////////////////////////////////////	
    // UI notifications	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

}	


 + (void) chatLoaded:(NSNotification*)notification	
{	
    ////////////////////////////////////////////////////////////////////////////////////////////////	
    // Set a custom chat background (runtime image)	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

     // Those attributes controllable by UIAppearance should still be controlled via the standard appearance	
    // invocations. For a chat-wide background image to work you will need to also uncomment the background	
    // color apperance settings above	

     //ZDCChatUI *chatUI = notification.object;	

     //chatUI.chatBackgroundAnchor = @(ZDCChatBackgroundAnchorTop);	
    //chatUI.backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"SampleBackground"]];	
}	


 + (void) chatLayout:(NSNotification*)notification	
{	
    ////////////////////////////////////////////////////////////////////////////////////////////////	
    // Customise the layout of any part of the chat UI here, this notification is received after	
    // the standard/appearance configured layout has been applied	
    ////////////////////////////////////////////////////////////////////////////////////////////////	

     //ZDCChatUI *chatUI = notification.object;	
    //chatUI.loadingView...	
    //chatUI.formView...	
    //chatUI.chatView...	
}	


 + (void) chatUnloaded:(NSNotification*)notification	
{	
    // The Chat UI has been dismissed	
}	

 + (UIColor *)darkerColorForColor:(UIColor *)color by:(float)diff	
{	
  CGFloat r, g, b, a;	
  if ([color getRed:&r green:&g blue:&b alpha:&a])	
    return [UIColor colorWithRed:MAX(r - diff, 0.0)	
                           green:MAX(g - diff, 0.0)	
                            blue:MAX(b - diff, 0.0)	
                           alpha:a];	
  return nil;	
}	

 + (UIColor*) navBarTintColor	
{	
  return [UINavigationBar appearance].barTintColor;	
}	

 + (UIColor*) navTintColor	
{	
  return [UINavigationBar appearance].tintColor;	
}	

 + (BOOL) isVersionOrNewer:(NSString*)majorVersionNumber	
{	
  return [[[UIDevice currentDevice] systemVersion] compare:majorVersionNumber options:NSNumericSearch] != NSOrderedAscending;	
}	

 @end
