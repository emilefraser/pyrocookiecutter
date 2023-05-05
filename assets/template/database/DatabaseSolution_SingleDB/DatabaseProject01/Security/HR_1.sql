CREATE SCHEMA [HR]
    AUTHORIZATION [dbo];


GO
EXECUTE sp_addextendedproperty @name = N'Schema EP', @value = 'HR EP Description', @level0type = N'SCHEMA', @level0name = N'HR';

