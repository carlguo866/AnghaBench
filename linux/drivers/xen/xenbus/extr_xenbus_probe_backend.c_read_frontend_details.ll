; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe_backend.c_read_frontend_details.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe_backend.c_read_frontend_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"frontend-id\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"frontend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*)* @read_frontend_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_frontend_details(%struct.xenbus_device* %0) #0 {
  %2 = alloca %struct.xenbus_device*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %2, align 8
  %3 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %4 = call i32 @xenbus_read_otherend_details(%struct.xenbus_device* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  ret i32 %4
}

declare dso_local i32 @xenbus_read_otherend_details(%struct.xenbus_device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
