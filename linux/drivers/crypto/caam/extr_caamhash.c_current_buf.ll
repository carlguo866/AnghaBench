; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_current_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_current_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caam_hash_state = type { i32*, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.caam_hash_state*)* @current_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @current_buf(%struct.caam_hash_state* %0) #0 {
  %2 = alloca %struct.caam_hash_state*, align 8
  store %struct.caam_hash_state* %0, %struct.caam_hash_state** %2, align 8
  %3 = load %struct.caam_hash_state*, %struct.caam_hash_state** %2, align 8
  %4 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.caam_hash_state*, %struct.caam_hash_state** %2, align 8
  %9 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  br label %15

11:                                               ; preds = %1
  %12 = load %struct.caam_hash_state*, %struct.caam_hash_state** %2, align 8
  %13 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i32* [ %10, %7 ], [ %14, %11 ]
  ret i32* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
