; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_portal_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_portal_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.portal = type { %struct.portal_group*, i32 }
%struct.portal_group = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@p_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.portal* (%struct.portal_group*)* @portal_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.portal* @portal_new(%struct.portal_group* %0) #0 {
  %2 = alloca %struct.portal_group*, align 8
  %3 = alloca %struct.portal*, align 8
  store %struct.portal_group* %0, %struct.portal_group** %2, align 8
  %4 = call %struct.portal* @calloc(i32 1, i32 16)
  store %struct.portal* %4, %struct.portal** %3, align 8
  %5 = load %struct.portal*, %struct.portal** %3, align 8
  %6 = icmp eq %struct.portal* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load %struct.portal*, %struct.portal** %3, align 8
  %11 = getelementptr inbounds %struct.portal, %struct.portal* %10, i32 0, i32 1
  %12 = call i32 @TAILQ_INIT(i32* %11)
  %13 = load %struct.portal_group*, %struct.portal_group** %2, align 8
  %14 = load %struct.portal*, %struct.portal** %3, align 8
  %15 = getelementptr inbounds %struct.portal, %struct.portal* %14, i32 0, i32 0
  store %struct.portal_group* %13, %struct.portal_group** %15, align 8
  %16 = load %struct.portal_group*, %struct.portal_group** %2, align 8
  %17 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %16, i32 0, i32 0
  %18 = load %struct.portal*, %struct.portal** %3, align 8
  %19 = load i32, i32* @p_next, align 4
  %20 = call i32 @TAILQ_INSERT_TAIL(i32* %17, %struct.portal* %18, i32 %19)
  %21 = load %struct.portal*, %struct.portal** %3, align 8
  ret %struct.portal* %21
}

declare dso_local %struct.portal* @calloc(i32, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.portal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
