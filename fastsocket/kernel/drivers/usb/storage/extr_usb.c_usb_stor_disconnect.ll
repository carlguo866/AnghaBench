; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_usb.c_usb_stor_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_usb.c_usb_stor_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.us_data = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"storage_disconnect() called\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_stor_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.us_data*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.us_data* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.us_data* %5, %struct.us_data** %3, align 8
  %6 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.us_data*, %struct.us_data** %3, align 8
  %8 = call i32 @quiesce_and_remove_host(%struct.us_data* %7)
  %9 = load %struct.us_data*, %struct.us_data** %3, align 8
  %10 = call i32 @release_everything(%struct.us_data* %9)
  ret void
}

declare dso_local %struct.us_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @US_DEBUGP(i8*) #1

declare dso_local i32 @quiesce_and_remove_host(%struct.us_data*) #1

declare dso_local i32 @release_everything(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
