; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/amd29k/extr_amd29k.c_decode_load_store.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/amd29k/extr_amd29k.c_decode_load_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMD29K_TYPE_IMM = common dso_local global i32 0, align 4
@AMD29K_TYPE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @decode_load_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_load_store(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 128
  %10 = ashr i32 %9, 7
  %11 = load i32, i32* @AMD29K_TYPE_IMM, align 4
  %12 = call i32 @AMD29K_SET_VALUE(i32* %5, i32 0, i32 %10, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 127
  %18 = load i32, i32* @AMD29K_TYPE_IMM, align 4
  %19 = call i32 @AMD29K_SET_VALUE(i32* %13, i32 1, i32 %17, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AMD29K_TYPE_REG, align 4
  %25 = call i32 @AMD29K_SET_VALUE(i32* %20, i32 2, i32 %23, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i64 @AMD29K_HAS_BIT(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @AMD29K_TYPE_IMM, align 4
  br label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @AMD29K_TYPE_REG, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = call i32 @AMD29K_SET_VALUE(i32* %26, i32 3, i32 %29, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @AMD29K_SET_INVALID(i32* %40, i32 4)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @AMD29K_SET_INVALID(i32* %42, i32 5)
  ret void
}

declare dso_local i32 @AMD29K_SET_VALUE(i32*, i32, i32, i32) #1

declare dso_local i64 @AMD29K_HAS_BIT(i32*) #1

declare dso_local i32 @AMD29K_SET_INVALID(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
