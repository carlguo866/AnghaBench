; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_read_dword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_lan_hmc.c_i40e_read_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_context_ele = type { i32, i32, i32 }

@I40E_DMA_TO_NONDMA = common dso_local global i32 0, align 4
@I40E_NONDMA_TO_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.i40e_context_ele*, i32*)* @i40e_read_dword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_read_dword(i32* %0, %struct.i40e_context_ele* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.i40e_context_ele*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.i40e_context_ele* %1, %struct.i40e_context_ele** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.i40e_context_ele*, %struct.i40e_context_ele** %5, align 8
  %14 = getelementptr inbounds %struct.i40e_context_ele, %struct.i40e_context_ele* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = srem i32 %15, 8
  store i32 %16, i32* %11, align 4
  %17 = load %struct.i40e_context_ele*, %struct.i40e_context_ele** %5, align 8
  %18 = getelementptr inbounds %struct.i40e_context_ele, %struct.i40e_context_ele* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 32
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.i40e_context_ele*, %struct.i40e_context_ele** %5, align 8
  %23 = getelementptr inbounds %struct.i40e_context_ele, %struct.i40e_context_ele* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %28

27:                                               ; preds = %3
  store i32 -1, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.i40e_context_ele*, %struct.i40e_context_ele** %5, align 8
  %34 = getelementptr inbounds %struct.i40e_context_ele, %struct.i40e_context_ele* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* @I40E_DMA_TO_NONDMA, align 4
  %41 = call i32 @i40e_memcpy(i32* %12, i32* %39, i32 4, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @CPU_TO_LE32(i32 %42)
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %12, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @LE32_TO_CPU(i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %7, align 4
  %51 = ashr i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.i40e_context_ele*, %struct.i40e_context_ele** %5, align 8
  %54 = getelementptr inbounds %struct.i40e_context_ele, %struct.i40e_context_ele* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* @I40E_NONDMA_TO_DMA, align 4
  %60 = call i32 @i40e_memcpy(i32* %58, i32* %7, i32 4, i32 %59)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @i40e_memcpy(i32*, i32*, i32, i32) #1

declare dso_local i32 @CPU_TO_LE32(i32) #1

declare dso_local i32 @LE32_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
