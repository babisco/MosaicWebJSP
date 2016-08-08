package com.hybrid.listener;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.annotation.WebListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Application Lifecycle Listener implementation class AttributeListener
 *
 */
@WebListener
public class AttributeListener implements ServletContextAttributeListener {

	static Logger log = LoggerFactory.getLogger(AttributeListener.class);
    /**
     * Default constructor. 
     */
    public AttributeListener() {
    }

	/**
     * @see ServletContextAttributeListener#attributeAdded(ServletContextAttributeEvent)
     */
    public void attributeAdded(ServletContextAttributeEvent scae)  { 
    	log.info("HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH");
    	log.info("   AttributeListener.attributeAdded()   ");
    	log.info("HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH");
    	
    }

	/**
     * @see ServletContextAttributeListener#attributeRemoved(ServletContextAttributeEvent)
     */
    public void attributeRemoved(ServletContextAttributeEvent scae)  { 
    	log.info("HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH");
    	log.info("  AttributeListener.attributeRemoved()  ");
    	log.info("HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH");
    }

	/**
     * @see ServletContextAttributeListener#attributeReplaced(ServletContextAttributeEvent)
     */
    public void attributeReplaced(ServletContextAttributeEvent scae)  { 
    	log.info("HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH");
    	log.info(" AttributeListener.attributeReplaced()  ");
    	log.info("HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH");
    }
	
}
