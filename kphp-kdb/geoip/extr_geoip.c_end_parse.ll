; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_end_parse.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_end_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buff = common dso_local global i32* null, align 8
@parse_pos = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @end_parse() #0 {
  %1 = load i32*, i32** @buff, align 8
  %2 = load i64, i64* @parse_pos, align 8
  %3 = getelementptr inbounds i32, i32* %1, i64 %2
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %0
  %7 = load i32*, i32** @buff, align 8
  %8 = load i64, i64* @parse_pos, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 10
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = load i32*, i32** @buff, align 8
  %14 = load i64, i64* @parse_pos, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 13
  br label %18

18:                                               ; preds = %12, %6, %0
  %19 = phi i1 [ true, %6 ], [ true, %0 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
