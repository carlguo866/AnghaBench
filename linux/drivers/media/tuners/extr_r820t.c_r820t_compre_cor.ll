; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_compre_cor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_compre_cor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r820t_sect_type = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r820t_sect_type*)* @r820t_compre_cor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r820t_compre_cor(%struct.r820t_sect_type* %0) #0 {
  %2 = alloca %struct.r820t_sect_type*, align 8
  %3 = alloca i32, align 4
  store %struct.r820t_sect_type* %0, %struct.r820t_sect_type** %2, align 8
  store i32 3, i32* %3, align 4
  br label %4

4:                                                ; preds = %34, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  %8 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %2, align 8
  %9 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %8, i64 0
  %10 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %12, i64 %15
  %17 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %11, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %7
  %21 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %2, align 8
  %22 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %21, i64 0
  %23 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %23, i64 %26
  %28 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %22, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %27, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @swap(i64 %29, i64 %31)
  br label %33

33:                                               ; preds = %20, %7
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %3, align 4
  br label %4

37:                                               ; preds = %4
  ret void
}

declare dso_local i32 @swap(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
