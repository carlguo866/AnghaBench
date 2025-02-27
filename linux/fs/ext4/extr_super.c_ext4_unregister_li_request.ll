; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_unregister_li_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_unregister_li_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ext4_li_mtx = common dso_local global i32 0, align 4
@ext4_li_info = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ext4_unregister_li_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_unregister_li_request(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %3 = call i32 @mutex_lock(i32* @ext4_li_mtx)
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ext4_li_info, align 8
  %5 = icmp ne %struct.TYPE_3__* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 @mutex_unlock(i32* @ext4_li_mtx)
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ext4_li_info, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.super_block*, %struct.super_block** %2, align 8
  %13 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ext4_remove_li_request(i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ext4_li_info, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = call i32 @mutex_unlock(i32* @ext4_li_mtx)
  br label %21

21:                                               ; preds = %8, %6
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ext4_remove_li_request(i32) #1

declare dso_local %struct.TYPE_4__* @EXT4_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
