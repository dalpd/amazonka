{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.RDS.Types.OptionSetting
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RDS.Types.OptionSetting where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Option settings are the actual settings being applied or configured for
-- that option. It is used when you modify an option group or describe
-- option groups. For example, the NATIVE_NETWORK_ENCRYPTION option has a
-- setting called SQLNET.ENCRYPTION_SERVER that can have several different
-- values.
--
-- /See:/ 'newOptionSetting' smart constructor.
data OptionSetting = OptionSetting'
  { -- | Indicates if the option setting is part of a collection.
    isCollection :: Prelude.Maybe Prelude.Bool,
    -- | The DB engine specific parameter type.
    applyType :: Prelude.Maybe Prelude.Text,
    -- | The current value of the option setting.
    value :: Prelude.Maybe Prelude.Text,
    -- | The name of the option that has settings that you can set.
    name :: Prelude.Maybe Prelude.Text,
    -- | The default value of the option setting.
    defaultValue :: Prelude.Maybe Prelude.Text,
    -- | A Boolean value that, when true, indicates the option setting can be
    -- modified from the default.
    isModifiable :: Prelude.Maybe Prelude.Bool,
    -- | The data type of the option setting.
    dataType :: Prelude.Maybe Prelude.Text,
    -- | The allowed values of the option setting.
    allowedValues :: Prelude.Maybe Prelude.Text,
    -- | The description of the option setting.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OptionSetting' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'isCollection', 'optionSetting_isCollection' - Indicates if the option setting is part of a collection.
--
-- 'applyType', 'optionSetting_applyType' - The DB engine specific parameter type.
--
-- 'value', 'optionSetting_value' - The current value of the option setting.
--
-- 'name', 'optionSetting_name' - The name of the option that has settings that you can set.
--
-- 'defaultValue', 'optionSetting_defaultValue' - The default value of the option setting.
--
-- 'isModifiable', 'optionSetting_isModifiable' - A Boolean value that, when true, indicates the option setting can be
-- modified from the default.
--
-- 'dataType', 'optionSetting_dataType' - The data type of the option setting.
--
-- 'allowedValues', 'optionSetting_allowedValues' - The allowed values of the option setting.
--
-- 'description', 'optionSetting_description' - The description of the option setting.
newOptionSetting ::
  OptionSetting
newOptionSetting =
  OptionSetting'
    { isCollection = Prelude.Nothing,
      applyType = Prelude.Nothing,
      value = Prelude.Nothing,
      name = Prelude.Nothing,
      defaultValue = Prelude.Nothing,
      isModifiable = Prelude.Nothing,
      dataType = Prelude.Nothing,
      allowedValues = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | Indicates if the option setting is part of a collection.
optionSetting_isCollection :: Lens.Lens' OptionSetting (Prelude.Maybe Prelude.Bool)
optionSetting_isCollection = Lens.lens (\OptionSetting' {isCollection} -> isCollection) (\s@OptionSetting' {} a -> s {isCollection = a} :: OptionSetting)

-- | The DB engine specific parameter type.
optionSetting_applyType :: Lens.Lens' OptionSetting (Prelude.Maybe Prelude.Text)
optionSetting_applyType = Lens.lens (\OptionSetting' {applyType} -> applyType) (\s@OptionSetting' {} a -> s {applyType = a} :: OptionSetting)

-- | The current value of the option setting.
optionSetting_value :: Lens.Lens' OptionSetting (Prelude.Maybe Prelude.Text)
optionSetting_value = Lens.lens (\OptionSetting' {value} -> value) (\s@OptionSetting' {} a -> s {value = a} :: OptionSetting)

-- | The name of the option that has settings that you can set.
optionSetting_name :: Lens.Lens' OptionSetting (Prelude.Maybe Prelude.Text)
optionSetting_name = Lens.lens (\OptionSetting' {name} -> name) (\s@OptionSetting' {} a -> s {name = a} :: OptionSetting)

-- | The default value of the option setting.
optionSetting_defaultValue :: Lens.Lens' OptionSetting (Prelude.Maybe Prelude.Text)
optionSetting_defaultValue = Lens.lens (\OptionSetting' {defaultValue} -> defaultValue) (\s@OptionSetting' {} a -> s {defaultValue = a} :: OptionSetting)

-- | A Boolean value that, when true, indicates the option setting can be
-- modified from the default.
optionSetting_isModifiable :: Lens.Lens' OptionSetting (Prelude.Maybe Prelude.Bool)
optionSetting_isModifiable = Lens.lens (\OptionSetting' {isModifiable} -> isModifiable) (\s@OptionSetting' {} a -> s {isModifiable = a} :: OptionSetting)

-- | The data type of the option setting.
optionSetting_dataType :: Lens.Lens' OptionSetting (Prelude.Maybe Prelude.Text)
optionSetting_dataType = Lens.lens (\OptionSetting' {dataType} -> dataType) (\s@OptionSetting' {} a -> s {dataType = a} :: OptionSetting)

-- | The allowed values of the option setting.
optionSetting_allowedValues :: Lens.Lens' OptionSetting (Prelude.Maybe Prelude.Text)
optionSetting_allowedValues = Lens.lens (\OptionSetting' {allowedValues} -> allowedValues) (\s@OptionSetting' {} a -> s {allowedValues = a} :: OptionSetting)

-- | The description of the option setting.
optionSetting_description :: Lens.Lens' OptionSetting (Prelude.Maybe Prelude.Text)
optionSetting_description = Lens.lens (\OptionSetting' {description} -> description) (\s@OptionSetting' {} a -> s {description = a} :: OptionSetting)

instance Core.FromXML OptionSetting where
  parseXML x =
    OptionSetting'
      Prelude.<$> (x Core..@? "IsCollection")
      Prelude.<*> (x Core..@? "ApplyType")
      Prelude.<*> (x Core..@? "Value")
      Prelude.<*> (x Core..@? "Name")
      Prelude.<*> (x Core..@? "DefaultValue")
      Prelude.<*> (x Core..@? "IsModifiable")
      Prelude.<*> (x Core..@? "DataType")
      Prelude.<*> (x Core..@? "AllowedValues")
      Prelude.<*> (x Core..@? "Description")

instance Prelude.Hashable OptionSetting

instance Prelude.NFData OptionSetting

instance Core.ToQuery OptionSetting where
  toQuery OptionSetting' {..} =
    Prelude.mconcat
      [ "IsCollection" Core.=: isCollection,
        "ApplyType" Core.=: applyType,
        "Value" Core.=: value,
        "Name" Core.=: name,
        "DefaultValue" Core.=: defaultValue,
        "IsModifiable" Core.=: isModifiable,
        "DataType" Core.=: dataType,
        "AllowedValues" Core.=: allowedValues,
        "Description" Core.=: description
      ]
