; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_udfend.h_leea_to_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_udfend.h_leea_to_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_extent_ad = type { i8*, i8* }
%struct.extent_ad = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i8*, i8* } (i64)* @leea_to_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8*, i8* } @leea_to_cpu(i64 %0) #0 {
  %2 = alloca %struct.kernel_extent_ad, align 8
  %3 = alloca %struct.extent_ad, align 4
  %4 = bitcast %struct.extent_ad* %3 to i64*
  store i64 %0, i64* %4, align 4
  %5 = getelementptr inbounds %struct.extent_ad, %struct.extent_ad* %3, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i8* @le32_to_cpu(i32 %6)
  %8 = getelementptr inbounds %struct.kernel_extent_ad, %struct.kernel_extent_ad* %2, i32 0, i32 1
  store i8* %7, i8** %8, align 8
  %9 = getelementptr inbounds %struct.extent_ad, %struct.extent_ad* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @le32_to_cpu(i32 %10)
  %12 = getelementptr inbounds %struct.kernel_extent_ad, %struct.kernel_extent_ad* %2, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = bitcast %struct.kernel_extent_ad* %2 to { i8*, i8* }*
  %14 = load { i8*, i8* }, { i8*, i8* }* %13, align 8
  ret { i8*, i8* } %14
}

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
