; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_build_q_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_build_q_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_pa = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_pa*, i32, i32, i32)* @ocrdma_build_q_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_build_q_pages(%struct.ocrdma_pa* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ocrdma_pa*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ocrdma_pa* %0, %struct.ocrdma_pa** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %34, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.ocrdma_pa*, %struct.ocrdma_pa** %5, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ocrdma_pa, %struct.ocrdma_pa* %18, i64 %20
  %22 = getelementptr inbounds %struct.ocrdma_pa, %struct.ocrdma_pa* %21, i32 0, i32 1
  store i8* %17, i8** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @upper_32_bits(i32 %23)
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.ocrdma_pa*, %struct.ocrdma_pa** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ocrdma_pa, %struct.ocrdma_pa* %26, i64 %28
  %30 = getelementptr inbounds %struct.ocrdma_pa, %struct.ocrdma_pa* %29, i32 0, i32 0
  store i8* %25, i8** %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %14
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %10

37:                                               ; preds = %10
  ret void
}

declare dso_local i64 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
