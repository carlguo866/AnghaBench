; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_foreign_headers.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_foreign_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gen_foreign_headers_buf = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_foreign_headers() #0 {
  %1 = alloca i64, align 8
  %2 = load i32*, i32** @gen_foreign_headers_buf, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %20

4:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %5

5:                                                ; preds = %16, %4
  %6 = load i64, i64* %1, align 8
  %7 = load i32*, i32** @gen_foreign_headers_buf, align 8
  %8 = call i64 @buf_len(i32* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load i32*, i32** @gen_foreign_headers_buf, align 8
  %12 = load i64, i64* %1, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @gen_include(i32 %14)
  br label %16

16:                                               ; preds = %10
  %17 = load i64, i64* %1, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %1, align 8
  br label %5

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %19, %0
  ret void
}

declare dso_local i64 @buf_len(i32*) #1

declare dso_local i32 @gen_include(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
