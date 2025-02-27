; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_eir_get_uuid_list.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_eir_get_uuid_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTM_EIR_COMPLETE_16BITS_UUID_TYPE = common dso_local global i32 0, align 4
@BTM_EIR_MORE_16BITS_UUID_TYPE = common dso_local global i32 0, align 4
@BTM_EIR_COMPLETE_32BITS_UUID_TYPE = common dso_local global i32 0, align 4
@BTM_EIR_MORE_32BITS_UUID_TYPE = common dso_local global i32 0, align 4
@BTM_EIR_COMPLETE_128BITS_UUID_TYPE = common dso_local global i32 0, align 4
@BTM_EIR_MORE_128BITS_UUID_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32*, i32*)* @btm_eir_get_uuid_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @btm_eir_get_uuid_list(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %24 [
    i32 129, label %15
    i32 128, label %18
    i32 130, label %21
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* @BTM_EIR_COMPLETE_16BITS_UUID_TYPE, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @BTM_EIR_MORE_16BITS_UUID_TYPE, align 4
  store i32 %17, i32* %12, align 4
  br label %26

18:                                               ; preds = %4
  %19 = load i32, i32* @BTM_EIR_COMPLETE_32BITS_UUID_TYPE, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @BTM_EIR_MORE_32BITS_UUID_TYPE, align 4
  store i32 %20, i32* %12, align 4
  br label %26

21:                                               ; preds = %4
  %22 = load i32, i32* @BTM_EIR_COMPLETE_128BITS_UUID_TYPE, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @BTM_EIR_MORE_128BITS_UUID_TYPE, align 4
  store i32 %23, i32* %12, align 4
  br label %26

24:                                               ; preds = %4
  %25 = load i32*, i32** %8, align 8
  store i32 0, i32* %25, align 4
  store i32* null, i32** %5, align 8
  br label %47

26:                                               ; preds = %21, %18, %15
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32* @BTM_CheckEirData(i32* %27, i32 %28, i32* %13)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32* @BTM_CheckEirData(i32* %33, i32 %34, i32* %13)
  store i32* %35, i32** %10, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  br label %41

38:                                               ; preds = %26
  %39 = load i32, i32* %11, align 4
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sdiv i32 %42, %43
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %10, align 8
  store i32* %46, i32** %5, align 8
  br label %47

47:                                               ; preds = %41, %24
  %48 = load i32*, i32** %5, align 8
  ret i32* %48
}

declare dso_local i32* @BTM_CheckEirData(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
