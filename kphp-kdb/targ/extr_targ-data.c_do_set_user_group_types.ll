; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_user_group_types.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_user_group_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.lev_targ_user_group_types = type { i32 }

@LEV_TARG_USER_GROUP_TYPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_user_group_types(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.lev_targ_user_group_types*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.TYPE_3__* @get_user(i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memcmp(i32* %14, i32 %17, i32 16)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %33

21:                                               ; preds = %13
  %22 = load i32, i32* @LEV_TARG_USER_GROUP_TYPES, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @alloc_log_event(i32 %22, i32 24, i32 %23)
  %25 = inttoptr i64 %24 to %struct.lev_targ_user_group_types*
  store %struct.lev_targ_user_group_types* %25, %struct.lev_targ_user_group_types** %7, align 8
  %26 = load %struct.lev_targ_user_group_types*, %struct.lev_targ_user_group_types** %7, align 8
  %27 = getelementptr inbounds %struct.lev_targ_user_group_types, %struct.lev_targ_user_group_types* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @memcpy(i32 %28, i32* %29, i32 16)
  %31 = load %struct.lev_targ_user_group_types*, %struct.lev_targ_user_group_types** %7, align 8
  %32 = call i32 @set_user_group_types(%struct.lev_targ_user_group_types* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %21, %20, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_3__* @get_user(i32) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i64 @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @set_user_group_types(%struct.lev_targ_user_group_types*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
