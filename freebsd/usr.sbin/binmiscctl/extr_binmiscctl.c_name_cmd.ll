; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/binmiscctl/extr_binmiscctl.c_name_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/binmiscctl/extr_binmiscctl.c_name_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [27 x i8] c"Required argument missing\0A\00", align 1
@IBE_NAME_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"'%s' string length longer than IBE_NAME_MAX (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @name_cmd(i32 %0, i8** %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = call i32 (i8*, ...) @usage(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %3
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = load i64, i64* @IBE_NAME_MAX, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i64, i64* @IBE_NAME_MAX, align 8
  %20 = call i32 (i8*, ...) @usage(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  br label %21

21:                                               ; preds = %18, %11
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i64, i64* @IBE_NAME_MAX, align 8
  %30 = call i32 @strlcpy(i32* %25, i8* %28, i64 %29)
  ret i32 0
}

declare dso_local i32 @usage(i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
