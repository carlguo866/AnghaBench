; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_farsi.c_conv_to_pstd.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_farsi.c_conv_to_pstd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s/\9A/\82\99/g\00", align 1
@curbuf = common dso_local global %struct.TYPE_4__* null, align 8
@CLEAR = common dso_local global i32 0, align 4
@farsi_text_2 = common dso_local global i32 0, align 4
@HLF_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @conv_to_pstd() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @do_cmdline_cmd(i32* bitcast ([10 x i8]* @.str to i32*))
  store i32 1, i32* %2, align 4
  br label %6

6:                                                ; preds = %38, %0
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curbuf, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sle i32 %7, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %6
  %14 = load i32, i32* %2, align 4
  %15 = call i32* @ml_get(i32 %14)
  store i32* %15, i32** %1, align 8
  %16 = load i32*, i32** %1, align 8
  %17 = call i64 @STRLEN(i32* %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %34, %13
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i32*, i32** %1, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @toF_TyA(i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %19

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %6

41:                                               ; preds = %6
  %42 = load i32, i32* @CLEAR, align 4
  %43 = call i32 @redraw_later(i32 %42)
  %44 = load i32, i32* @farsi_text_2, align 4
  %45 = load i32, i32* @HLF_S, align 4
  %46 = call i32 @hl_attr(i32 %45)
  %47 = call i32 @MSG_ATTR(i32 %44, i32 %46)
  ret void
}

declare dso_local i32 @do_cmdline_cmd(i32*) #1

declare dso_local i32* @ml_get(i32) #1

declare dso_local i64 @STRLEN(i32*) #1

declare dso_local i32 @toF_TyA(i32) #1

declare dso_local i32 @redraw_later(i32) #1

declare dso_local i32 @MSG_ATTR(i32, i32) #1

declare dso_local i32 @hl_attr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
