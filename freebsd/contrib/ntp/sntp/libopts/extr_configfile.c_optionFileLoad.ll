; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_optionFileLoad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_optionFileLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optionFileLoad(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @validate_struct(%struct.TYPE_5__* %7, i8* %8)
  %10 = call i32 @SUCCESSFUL(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %21

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = call i8** @VOIDP(i32* %15)
  store i8** %16, i8*** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8**, i8*** %6, align 8
  store i8* %17, i8** %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = call i32 @intern_file_load(%struct.TYPE_5__* %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %13, %12
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @SUCCESSFUL(i32) #1

declare dso_local i32 @validate_struct(%struct.TYPE_5__*, i8*) #1

declare dso_local i8** @VOIDP(i32*) #1

declare dso_local i32 @intern_file_load(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
