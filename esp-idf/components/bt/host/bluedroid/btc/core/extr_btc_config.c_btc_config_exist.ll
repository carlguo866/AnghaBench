; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_config.c_btc_config_exist.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_config.c_btc_config_exist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_config_exist(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** @config, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** @config, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @config_has_key(i32* %17, i8* %18, i8* %19)
  ret i32 %20
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @config_has_key(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
