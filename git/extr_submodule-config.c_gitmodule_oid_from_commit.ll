; ModuleID = '/home/carl/AnghaBench/git/extr_submodule-config.c_gitmodule_oid_from_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule-config.c_gitmodule_oid_from_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s:.gitmodules\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*, %struct.strbuf*)* @gitmodule_oid_from_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gitmodule_oid_from_commit(%struct.object_id* %0, %struct.object_id* %1, %struct.strbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.object_id*, %struct.object_id** %5, align 8
  %10 = call i64 @is_null_oid(%struct.object_id* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.object_id*, %struct.object_id** %6, align 8
  %14 = call i32 @oidclr(%struct.object_id* %13)
  store i32 1, i32* %4, align 4
  br label %29

15:                                               ; preds = %3
  %16 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %17 = load %struct.object_id*, %struct.object_id** %5, align 8
  %18 = call i32 @oid_to_hex(%struct.object_id* %17)
  %19 = call i32 @strbuf_addf(%struct.strbuf* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.object_id*, %struct.object_id** %6, align 8
  %24 = call i64 @get_oid(i32 %22, %struct.object_id* %23)
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 1, i32* %8, align 4
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %12
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

declare dso_local i32 @oidclr(%struct.object_id*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i64 @get_oid(i32, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
