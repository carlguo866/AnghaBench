; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_blockquote.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_html.c_rndr_blockquote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"<blockquote>\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"</blockquote>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.buf*, i8*)* @rndr_blockquote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndr_blockquote(%struct.buf* %0, %struct.buf* %1, i8* %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.buf*, align 8
  %6 = alloca i8*, align 8
  store %struct.buf* %0, %struct.buf** %4, align 8
  store %struct.buf* %1, %struct.buf** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.buf*, %struct.buf** %4, align 8
  %8 = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.buf*, %struct.buf** %4, align 8
  %13 = call i32 @bufputc(%struct.buf* %12, i8 signext 10)
  br label %14

14:                                               ; preds = %11, %3
  %15 = load %struct.buf*, %struct.buf** %4, align 8
  %16 = call i32 @BUFPUTSL(%struct.buf* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.buf*, %struct.buf** %5, align 8
  %18 = icmp ne %struct.buf* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.buf*, %struct.buf** %4, align 8
  %21 = load %struct.buf*, %struct.buf** %5, align 8
  %22 = getelementptr inbounds %struct.buf, %struct.buf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.buf*, %struct.buf** %5, align 8
  %25 = getelementptr inbounds %struct.buf, %struct.buf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @bufput(%struct.buf* %20, i32 %23, i64 %26)
  br label %28

28:                                               ; preds = %19, %14
  %29 = load %struct.buf*, %struct.buf** %4, align 8
  %30 = call i32 @BUFPUTSL(%struct.buf* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

declare dso_local i32 @BUFPUTSL(%struct.buf*, i8*) #1

declare dso_local i32 @bufput(%struct.buf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
