; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes.c_ccp_register_aes_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes.c_ccp_register_aes_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.list_head = type { i32 }

@aes_algs = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccp_register_aes_algs(%struct.list_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  %7 = call i32 (...) @ccp_version()
  store i32 %7, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aes_algs, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aes_algs, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %35

23:                                               ; preds = %13
  %24 = load %struct.list_head*, %struct.list_head** %3, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aes_algs, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = call i32 @ccp_register_aes_alg(%struct.list_head* %24, %struct.TYPE_4__* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %22
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %8

38:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @ccp_version(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @ccp_register_aes_alg(%struct.list_head*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
