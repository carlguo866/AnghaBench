; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_portal_group_set_offload.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_portal_group_set_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.portal_group = type { i32*, i32 }

@.str = private unnamed_addr constant [66 x i8] c"cannot set offload to \22%s\22 for portal-group \22%s\22; already defined\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @portal_group_set_offload(%struct.portal_group* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.portal_group*, align 8
  %5 = alloca i8*, align 8
  store %struct.portal_group* %0, %struct.portal_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.portal_group*, %struct.portal_group** %4, align 8
  %7 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.portal_group*, %struct.portal_group** %4, align 8
  %13 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @log_warnx(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %14)
  store i32 1, i32* %3, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i32* @checked_strdup(i8* %17)
  %19 = load %struct.portal_group*, %struct.portal_group** %4, align 8
  %20 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %16, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @log_warnx(i8*, i8*, i32) #1

declare dso_local i32* @checked_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
