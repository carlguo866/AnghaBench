; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Float_Parse.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Float_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Float_Parse(i8** %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca float*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store float* %1, float** %5, align 8
  %7 = load i8**, i8*** %4, align 8
  %8 = load i32, i32* @qfalse, align 4
  %9 = call i8* @COM_ParseExt(i8** %7, i32 %8)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = call float @atof(i8* %19)
  %21 = load float*, float** %5, align 8
  store float %20, float* %21, align 4
  %22 = load i32, i32* @qtrue, align 4
  store i32 %22, i32* %3, align 4
  br label %25

23:                                               ; preds = %12, %2
  %24 = load i32, i32* @qfalse, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i8* @COM_ParseExt(i8**, i32) #1

declare dso_local float @atof(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
