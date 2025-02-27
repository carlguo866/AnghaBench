; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_pfctl_trans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_pfctl_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_buffer = type { i64, i64 }
%struct.pfioc_trans = type { i32, %struct.pfioc_trans_e*, i64 }
%struct.pfioc_trans_e = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_trans(i32 %0, %struct.pfr_buffer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfr_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pfioc_trans, align 8
  store i32 %0, i32* %5, align 4
  store %struct.pfr_buffer* %1, %struct.pfr_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @bzero(%struct.pfioc_trans* %9, i32 24)
  %11 = load %struct.pfr_buffer*, %struct.pfr_buffer** %6, align 8
  %12 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 %13, %15
  %17 = getelementptr inbounds %struct.pfioc_trans, %struct.pfioc_trans* %9, i32 0, i32 2
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.pfioc_trans, %struct.pfioc_trans* %9, i32 0, i32 0
  store i32 4, i32* %18, align 8
  %19 = load %struct.pfr_buffer*, %struct.pfr_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.pfioc_trans_e*
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.pfioc_trans_e, %struct.pfioc_trans_e* %22, i64 %24
  %26 = getelementptr inbounds %struct.pfioc_trans, %struct.pfioc_trans* %9, i32 0, i32 1
  store %struct.pfioc_trans_e* %25, %struct.pfioc_trans_e** %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ioctl(i32 %27, i32 %28, %struct.pfioc_trans* %9)
  ret i32 %29
}

declare dso_local i32 @bzero(%struct.pfioc_trans*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.pfioc_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
