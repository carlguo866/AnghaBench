; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_fscrypt_private.h_fscrypt_policy_contents_mode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_fscrypt_private.h_fscrypt_policy_contents_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.fscrypt_policy = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.fscrypt_policy*)* @fscrypt_policy_contents_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fscrypt_policy_contents_mode(%union.fscrypt_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.fscrypt_policy*, align 8
  store %union.fscrypt_policy* %0, %union.fscrypt_policy** %3, align 8
  %4 = load %union.fscrypt_policy*, %union.fscrypt_policy** %3, align 8
  %5 = bitcast %union.fscrypt_policy* %4 to i32*
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %17 [
    i32 129, label %7
    i32 128, label %12
  ]

7:                                                ; preds = %1
  %8 = load %union.fscrypt_policy*, %union.fscrypt_policy** %3, align 8
  %9 = bitcast %union.fscrypt_policy* %8 to %struct.TYPE_3__*
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load %union.fscrypt_policy*, %union.fscrypt_policy** %3, align 8
  %14 = bitcast %union.fscrypt_policy* %13 to %struct.TYPE_4__*
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %2, align 4
  br label %19

17:                                               ; preds = %1
  %18 = call i32 (...) @BUG()
  br label %19

19:                                               ; preds = %17, %12, %7
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
