; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_outline.c_BeforeWrite.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_outline.c_BeforeWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"Count\00", align 1
@HPDF_OCLASS_NUMBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c" BeforeWrite\0A\00", align 1
@HPDF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @BeforeWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BeforeWrite(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i32, i32* @HPDF_OCLASS_NUMBER, align 4
  %8 = call i32 @HPDF_Dict_GetItem(i64 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @CountChild(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @HPDF_Dict_RemoveElement(i64 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %2, align 4
  br label %48

23:                                               ; preds = %17, %1
  %24 = load i64, i64* %3, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @HPDF_Outline_GetOpened(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, -1
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %46

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @HPDF_Dict_AddNumber(i64 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i32, i32* @HPDF_OK, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %41, %20
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @HPDF_Dict_GetItem(i64, i8*, i32) #1

declare dso_local i32 @CountChild(i32) #1

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_Dict_RemoveElement(i64, i8*) #1

declare dso_local i32 @HPDF_Outline_GetOpened(i32) #1

declare dso_local i32 @HPDF_Dict_AddNumber(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
