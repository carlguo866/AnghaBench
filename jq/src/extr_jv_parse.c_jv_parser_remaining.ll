; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_parse.c_jv_parser_remaining.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_parse.c_jv_parser_remaining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jv_parser = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_parser_remaining(%struct.jv_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jv_parser*, align 8
  store %struct.jv_parser* %0, %struct.jv_parser** %3, align 8
  %4 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %5 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

9:                                                ; preds = %1
  %10 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %11 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %14 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %9, %8
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
