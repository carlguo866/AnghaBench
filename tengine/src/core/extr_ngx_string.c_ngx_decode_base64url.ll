; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_decode_base64url.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_decode_base64url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ngx_decode_base64url.basis64 = internal global [256 x i32] [i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 62, i32 77, i32 77, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 77, i32 77, i32 77, i32 77, i32 63, i32 77, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77, i32 77], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_decode_base64url(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @ngx_decode_base64_internal(i32* %5, i32* %6, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @ngx_decode_base64url.basis64, i64 0, i64 0))
  ret i32 %7
}

declare dso_local i32 @ngx_decode_base64_internal(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
