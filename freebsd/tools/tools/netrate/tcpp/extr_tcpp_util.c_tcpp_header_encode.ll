; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpp/extr_tcpp_util.c_tcpp_header_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpp/extr_tcpp_util.c_tcpp_header_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpp_header = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcpp_header_encode(%struct.tcpp_header* %0) #0 {
  %2 = alloca %struct.tcpp_header*, align 8
  store %struct.tcpp_header* %0, %struct.tcpp_header** %2, align 8
  %3 = load %struct.tcpp_header*, %struct.tcpp_header** %2, align 8
  %4 = getelementptr inbounds %struct.tcpp_header, %struct.tcpp_header* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @htobe32(i32 %5)
  %7 = load %struct.tcpp_header*, %struct.tcpp_header** %2, align 8
  %8 = getelementptr inbounds %struct.tcpp_header, %struct.tcpp_header* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load %struct.tcpp_header*, %struct.tcpp_header** %2, align 8
  %10 = getelementptr inbounds %struct.tcpp_header, %struct.tcpp_header* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @htobe64(i32 %11)
  %13 = load %struct.tcpp_header*, %struct.tcpp_header** %2, align 8
  %14 = getelementptr inbounds %struct.tcpp_header, %struct.tcpp_header* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret void
}

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @htobe64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
