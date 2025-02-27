; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_hash_assoc_continue.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_hash_assoc_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }

@gcm_hash_assoc_remain_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @gcm_hash_assoc_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_hash_assoc_continue(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %8 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @gcm_remain(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @gcm_hash_assoc_remain_done, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @gcm_hash_remain(%struct.aead_request* %14, i32 %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %26

21:                                               ; preds = %13
  %22 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @gcm_hash_assoc_remain_continue(%struct.aead_request* %22, i32 %23)
  %25 = sext i32 %24 to i64
  br label %26

26:                                               ; preds = %21, %20
  %27 = phi i64 [ %18, %20 ], [ %25, %21 ]
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @gcm_hash_assoc_remain_continue(%struct.aead_request* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @gcm_remain(i32) #1

declare dso_local i64 @gcm_hash_remain(%struct.aead_request*, i32, i32, i32) #1

declare dso_local i32 @gcm_hash_assoc_remain_continue(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
