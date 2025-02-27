; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_item_ops.c_direntry_print_vi.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_item_ops.c_direntry_print_vi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtual_item = type { i32, i32, i32, %struct.direntry_uarea* }
%struct.direntry_uarea = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"reiserfs-16104\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"DIRENTRY, index %d, type 0x%x, %h, flags 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%d entries: \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtual_item*)* @direntry_print_vi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @direntry_print_vi(%struct.virtual_item* %0) #0 {
  %2 = alloca %struct.virtual_item*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.direntry_uarea*, align 8
  store %struct.virtual_item* %0, %struct.virtual_item** %2, align 8
  %5 = load %struct.virtual_item*, %struct.virtual_item** %2, align 8
  %6 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %5, i32 0, i32 3
  %7 = load %struct.direntry_uarea*, %struct.direntry_uarea** %6, align 8
  store %struct.direntry_uarea* %7, %struct.direntry_uarea** %4, align 8
  %8 = load %struct.virtual_item*, %struct.virtual_item** %2, align 8
  %9 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.virtual_item*, %struct.virtual_item** %2, align 8
  %12 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.virtual_item*, %struct.virtual_item** %2, align 8
  %15 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.direntry_uarea*, %struct.direntry_uarea** %4, align 8
  %18 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @reiserfs_warning(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %13, i32 %16, i32 %19)
  %21 = load %struct.direntry_uarea*, %struct.direntry_uarea** %4, align 8
  %22 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %40, %1
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.direntry_uarea*, %struct.direntry_uarea** %4, align 8
  %28 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.direntry_uarea*, %struct.direntry_uarea** %4, align 8
  %33 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %25

43:                                               ; preds = %25
  %44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @reiserfs_warning(i32*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
