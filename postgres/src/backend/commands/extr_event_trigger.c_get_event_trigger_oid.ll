; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_get_event_trigger_oid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_get_event_trigger_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVENTTRIGGERNAME = common dso_local global i32 0, align 4
@Anum_pg_event_trigger_oid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"event trigger \22%s\22 does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_event_trigger_oid(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @EVENTTRIGGERNAME, align 4
  %7 = load i32, i32* @Anum_pg_event_trigger_oid, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @CStringGetDatum(i8* %8)
  %10 = call i32 @GetSysCacheOid1(i32 %6, i32 %7, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @OidIsValid(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %20 = call i32 @errcode(i32 %19)
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = call i32 @ereport(i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %17, %14, %2
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @GetSysCacheOid1(i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
