; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lcode.c_patchtestreg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lcode.c_patchtestreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OP_TESTSET = common dso_local global i64 0, align 8
@NO_REG = common dso_local global i32 0, align 4
@OP_TEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @patchtestreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patchtestreg(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32* @getjumpcontrol(i32* %9, i32 %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @GET_OPCODE(i32 %13)
  %15 = load i64, i64* @OP_TESTSET, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @NO_REG, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @GETARG_B(i32 %25)
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @SETARG_A(i32 %30, i32 %31)
  br label %43

33:                                               ; preds = %22, %18
  %34 = load i32, i32* @OP_TEST, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @GETARG_B(i32 %36)
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @GETARG_C(i32 %39)
  %41 = call i32 @CREATE_ABC(i32 %34, i32 %37, i32 0, i32 %40)
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %33, %28
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %17
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32* @getjumpcontrol(i32*, i32) #1

declare dso_local i64 @GET_OPCODE(i32) #1

declare dso_local i32 @GETARG_B(i32) #1

declare dso_local i32 @SETARG_A(i32, i32) #1

declare dso_local i32 @CREATE_ABC(i32, i32, i32, i32) #1

declare dso_local i32 @GETARG_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
