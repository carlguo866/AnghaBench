; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_bytes_read_from_memory_lb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_bytes_read_from_memory_lb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_channel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mite_bytes_read_from_memory_lb(%struct.mite_channel* %0) #0 {
  %2 = alloca %struct.mite_channel*, align 8
  %3 = alloca i64, align 8
  store %struct.mite_channel* %0, %struct.mite_channel** %2, align 8
  %4 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %5 = call i64 @mite_device_bytes_transferred(%struct.mite_channel* %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %8 = call i64 @mite_bytes_in_transit(%struct.mite_channel* %7)
  %9 = add nsw i64 %6, %8
  ret i64 %9
}

declare dso_local i64 @mite_device_bytes_transferred(%struct.mite_channel*) #1

declare dso_local i64 @mite_bytes_in_transit(%struct.mite_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
