; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_parse_mark_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_parse_mark_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"No value after ':' in mark: %s\00", align 1
@command_buf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @parse_mark_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mark_ref(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 58
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8**, i8*** %4, align 8
  %16 = call i32 @strtoumax(i8* %14, i8** %15, i32 10)
  store i32 %16, i32* %5, align 4
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @command_buf, i32 0, i32 0), align 4
  %23 = call i32 @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strtoumax(i8*, i8**, i32) #1

declare dso_local i32 @die(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
