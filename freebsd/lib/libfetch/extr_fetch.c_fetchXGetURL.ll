; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_fetch.c_fetchXGetURL.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_fetch.c_fetchXGetURL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url_stat = type { i32 }
%struct.url = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fetchXGetURL(i8* %0, %struct.url_stat* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.url_stat*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.url*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.url_stat* %1, %struct.url_stat** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.url* @fetchParseURL(i8* %10)
  store %struct.url* %11, %struct.url** %8, align 8
  %12 = icmp eq %struct.url* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %22

14:                                               ; preds = %3
  %15 = load %struct.url*, %struct.url** %8, align 8
  %16 = load %struct.url_stat*, %struct.url_stat** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32* @fetchXGet(%struct.url* %15, %struct.url_stat* %16, i8* %17)
  store i32* %18, i32** %9, align 8
  %19 = load %struct.url*, %struct.url** %8, align 8
  %20 = call i32 @fetchFreeURL(%struct.url* %19)
  %21 = load i32*, i32** %9, align 8
  store i32* %21, i32** %4, align 8
  br label %22

22:                                               ; preds = %14, %13
  %23 = load i32*, i32** %4, align 8
  ret i32* %23
}

declare dso_local %struct.url* @fetchParseURL(i8*) #1

declare dso_local i32* @fetchXGet(%struct.url*, %struct.url_stat*, i8*) #1

declare dso_local i32 @fetchFreeURL(%struct.url*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
