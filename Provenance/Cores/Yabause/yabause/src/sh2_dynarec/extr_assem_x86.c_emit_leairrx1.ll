; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_leairrx1.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_leairrx1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"lea %x(%%%s,%%%s,1),%%%s\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@EBP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_leairrx1(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32*, i32** @regname, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** @regname, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @regname, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @assem_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %14, i32 %19, i32 %24)
  %26 = call i32 @output_byte(i32 141)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @EBP, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29, %4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @output_modrm(i32 2, i32 4, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @output_sib(i32 0, i32 %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @output_w32(i32 %39)
  br label %47

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @output_modrm(i32 0, i32 4, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @output_sib(i32 0, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %33
  ret void
}

declare dso_local i32 @assem_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @output_byte(i32) #1

declare dso_local i32 @output_modrm(i32, i32, i32) #1

declare dso_local i32 @output_sib(i32, i32, i32) #1

declare dso_local i32 @output_w32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
