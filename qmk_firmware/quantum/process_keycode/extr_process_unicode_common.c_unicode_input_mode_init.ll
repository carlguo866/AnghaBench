; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_unicode_common.c_unicode_input_mode_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_unicode_common.c_unicode_input_mode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@EECONFIG_UNICODEMODE = common dso_local global i32 0, align 4
@unicode_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@selected = common dso_local global i64* null, align 8
@selected_index = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Unicode input mode init to: %u\0A\00", align 1
@selected_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unicode_input_mode_init() #0 {
  %1 = load i32, i32* @EECONFIG_UNICODEMODE, align 4
  %2 = call i32 @eeprom_read_byte(i32 %1)
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @unicode_config, i32 0, i32 1), align 8
  %3 = load i64*, i64** @selected, align 8
  store i64 0, i64* @selected_index, align 8
  %4 = getelementptr inbounds i64, i64* %3, i64 0
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @unicode_config, i32 0, i32 0), align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @unicode_config, i32 0, i32 0), align 8
  %7 = call i32 @dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %6)
  ret void
}

declare dso_local i32 @eeprom_read_byte(i32) #1

declare dso_local i32 @dprintf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
