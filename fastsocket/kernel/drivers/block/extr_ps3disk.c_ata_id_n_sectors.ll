; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3disk.c_ata_id_n_sectors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3disk.c_ata_id_n_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ata_id_n_sectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_id_n_sectors(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i64 @ata_id_has_lba(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @ata_id_has_lba48(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @ata_id_u64(i32* %12, i32 100)
  store i32 %13, i32* %2, align 4
  br label %36

14:                                               ; preds = %7
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @ata_id_u32(i32* %15, i32 60)
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @ata_id_current_chs_valid(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @ata_id_u32(i32* %22, i32 57)
  store i32 %23, i32* %2, align 4
  br label %36

24:                                               ; preds = %17
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  %32 = load i32*, i32** %3, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 6
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %24, %21, %14, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @ata_id_has_lba(i32*) #1

declare dso_local i64 @ata_id_has_lba48(i32*) #1

declare dso_local i32 @ata_id_u64(i32*, i32) #1

declare dso_local i32 @ata_id_u32(i32*, i32) #1

declare dso_local i64 @ata_id_current_chs_valid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
