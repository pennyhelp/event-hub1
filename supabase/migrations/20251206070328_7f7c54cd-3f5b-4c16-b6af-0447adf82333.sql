-- Add status column to billing_transactions table
ALTER TABLE public.billing_transactions 
ADD COLUMN status text NOT NULL DEFAULT 'pending';

-- Add constraint to ensure status is either 'pending' or 'paid'
ALTER TABLE public.billing_transactions 
ADD CONSTRAINT billing_transactions_status_check 
CHECK (status IN ('pending', 'paid'));