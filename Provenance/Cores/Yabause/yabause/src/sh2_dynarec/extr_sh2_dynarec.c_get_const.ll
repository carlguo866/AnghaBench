; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_get_const.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_get_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i8*, i32* }

@HOST_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown constant in r%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_const(%struct.regstat* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regstat*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.regstat* %0, %struct.regstat** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load i8, i8* %5, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %37, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @HOST_REGS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load %struct.regstat*, %struct.regstat** %4, align 8
  %18 = getelementptr inbounds %struct.regstat, %struct.regstat* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8, i8* %5, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %16
  %29 = load %struct.regstat*, %struct.regstat** %4, align 8
  %30 = getelementptr inbounds %struct.regstat, %struct.regstat* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %44

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %12

40:                                               ; preds = %12
  %41 = load i8, i8* %5, align 1
  %42 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8 signext %41)
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %28, %10
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @printf(i8*, i8 signext) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
