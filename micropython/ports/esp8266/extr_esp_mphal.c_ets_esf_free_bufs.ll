; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_esp_mphal.c_ets_esf_free_bufs.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_esp_mphal.c_ets_esf_free_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ets_esf_free_bufs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i64* (...) @ets_get_esf_buf_ctlblk()
  store i64* %6, i64** %3, align 8
  %7 = load i64*, i64** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i64*
  store i64* %12, i64** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %16, %1
  %14 = load i64*, i64** %4, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 8
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i64*
  store i64* %20, i64** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %13

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i64* @ets_get_esf_buf_ctlblk(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
