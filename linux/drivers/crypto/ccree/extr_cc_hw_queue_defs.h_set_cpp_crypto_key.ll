; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hw_queue_defs.h_set_cpp_crypto_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hw_queue_defs.h_set_cpp_crypto_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_hw_desc = type { i32* }

@CC_CPP_DIN_ADDR = common dso_local global i32 0, align 4
@WORD1_DIN_SIZE = common dso_local global i32 0, align 4
@CC_CPP_DIN_SIZE = common dso_local global i32 0, align 4
@WORD1_LOCK_QUEUE = common dso_local global i32 0, align 4
@WORD4_SETUP_OPERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_hw_desc*, i32)* @set_cpp_crypto_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cpp_crypto_key(%struct.cc_hw_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.cc_hw_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.cc_hw_desc* %0, %struct.cc_hw_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @CC_CPP_DIN_ADDR, align 4
  %6 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %7 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %5
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @WORD1_DIN_SIZE, align 4
  %13 = load i32, i32* @CC_CPP_DIN_SIZE, align 4
  %14 = call i32 @FIELD_PREP(i32 %12, i32 %13)
  %15 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %16 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %14
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @WORD1_LOCK_QUEUE, align 4
  %22 = call i32 @FIELD_PREP(i32 %21, i32 1)
  %23 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %24 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %22
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @WORD4_SETUP_OPERATION, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @FIELD_PREP(i32 %29, i32 %30)
  %32 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %3, align 8
  %33 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %31
  store i32 %37, i32* %35, align 4
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
