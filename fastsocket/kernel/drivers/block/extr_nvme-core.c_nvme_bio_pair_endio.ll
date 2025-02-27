; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_bio_pair_endio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_bio_pair_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.nvme_bio_pair* }
%struct.nvme_bio_pair = type { i32, %struct.nvme_bio_pair*, %struct.nvme_bio_pair*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @nvme_bio_pair_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_bio_pair_endio(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_bio_pair*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bio*, %struct.bio** %3, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 0
  %8 = load %struct.nvme_bio_pair*, %struct.nvme_bio_pair** %7, align 8
  store %struct.nvme_bio_pair* %8, %struct.nvme_bio_pair** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.nvme_bio_pair*, %struct.nvme_bio_pair** %5, align 8
  %14 = getelementptr inbounds %struct.nvme_bio_pair, %struct.nvme_bio_pair* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.nvme_bio_pair*, %struct.nvme_bio_pair** %5, align 8
  %17 = getelementptr inbounds %struct.nvme_bio_pair, %struct.nvme_bio_pair* %16, i32 0, i32 4
  %18 = call i64 @atomic_dec_and_test(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load %struct.nvme_bio_pair*, %struct.nvme_bio_pair** %5, align 8
  %22 = getelementptr inbounds %struct.nvme_bio_pair, %struct.nvme_bio_pair* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.nvme_bio_pair*, %struct.nvme_bio_pair** %5, align 8
  %25 = getelementptr inbounds %struct.nvme_bio_pair, %struct.nvme_bio_pair* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @bio_endio(i32 %23, i32 %26)
  %28 = load %struct.nvme_bio_pair*, %struct.nvme_bio_pair** %5, align 8
  %29 = getelementptr inbounds %struct.nvme_bio_pair, %struct.nvme_bio_pair* %28, i32 0, i32 2
  %30 = load %struct.nvme_bio_pair*, %struct.nvme_bio_pair** %29, align 8
  %31 = call i32 @kfree(%struct.nvme_bio_pair* %30)
  %32 = load %struct.nvme_bio_pair*, %struct.nvme_bio_pair** %5, align 8
  %33 = getelementptr inbounds %struct.nvme_bio_pair, %struct.nvme_bio_pair* %32, i32 0, i32 1
  %34 = load %struct.nvme_bio_pair*, %struct.nvme_bio_pair** %33, align 8
  %35 = call i32 @kfree(%struct.nvme_bio_pair* %34)
  %36 = load %struct.nvme_bio_pair*, %struct.nvme_bio_pair** %5, align 8
  %37 = call i32 @kfree(%struct.nvme_bio_pair* %36)
  br label %38

38:                                               ; preds = %20, %15
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @bio_endio(i32, i32) #1

declare dso_local i32 @kfree(%struct.nvme_bio_pair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
