; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv.c_iconv_unregister_converter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv.c_iconv_unregister_converter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iconv_converter_class = type { i32 }
%struct.kobj_class = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"converter has %d references left\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@iconv_converters = common dso_local global i32 0, align 4
@cc_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iconv_converter_class*)* @iconv_unregister_converter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iconv_unregister_converter(%struct.iconv_converter_class* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iconv_converter_class*, align 8
  store %struct.iconv_converter_class* %0, %struct.iconv_converter_class** %3, align 8
  %4 = load %struct.iconv_converter_class*, %struct.iconv_converter_class** %3, align 8
  %5 = getelementptr inbounds %struct.iconv_converter_class, %struct.iconv_converter_class* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %5, align 4
  %8 = load %struct.iconv_converter_class*, %struct.iconv_converter_class** %3, align 8
  %9 = getelementptr inbounds %struct.iconv_converter_class, %struct.iconv_converter_class* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.iconv_converter_class*, %struct.iconv_converter_class** %3, align 8
  %14 = getelementptr inbounds %struct.iconv_converter_class, %struct.iconv_converter_class* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ICDEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @EBUSY, align 4
  store i32 %17, i32* %2, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.iconv_converter_class*, %struct.iconv_converter_class** %3, align 8
  %20 = load i32, i32* @cc_link, align 4
  %21 = call i32 @TAILQ_REMOVE(i32* @iconv_converters, %struct.iconv_converter_class* %19, i32 %20)
  %22 = load %struct.iconv_converter_class*, %struct.iconv_converter_class** %3, align 8
  %23 = bitcast %struct.iconv_converter_class* %22 to %struct.kobj_class*
  %24 = call i32 @kobj_class_free(%struct.kobj_class* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %18, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @ICDEBUG(i8*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.iconv_converter_class*, i32) #1

declare dso_local i32 @kobj_class_free(%struct.kobj_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
