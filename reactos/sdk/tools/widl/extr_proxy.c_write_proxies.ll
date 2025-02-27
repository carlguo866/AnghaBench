; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_proxy.c_write_proxies.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_proxy.c_write_proxies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_proxies = common dso_local global i32 0, align 4
@do_everything = common dso_local global i64 0, align 8
@proxy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_proxies(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @do_proxies, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  %7 = load i64, i64* @do_everything, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @need_proxy_file(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  br label %25

14:                                               ; preds = %9, %6
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @init_proxy(i32* %15)
  %17 = load i32, i32* @proxy, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %25

20:                                               ; preds = %14
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @write_proxy_routines(i32* %21)
  %23 = load i32, i32* @proxy, align 4
  %24 = call i32 @fclose(i32 %23)
  br label %25

25:                                               ; preds = %20, %19, %13, %5
  ret void
}

declare dso_local i32 @need_proxy_file(i32*) #1

declare dso_local i32 @init_proxy(i32*) #1

declare dso_local i32 @write_proxy_routines(i32*) #1

declare dso_local i32 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
