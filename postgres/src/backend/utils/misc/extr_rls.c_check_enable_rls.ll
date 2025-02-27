; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_rls.c_check_enable_rls.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_rls.c_check_enable_rls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@FirstNormalObjectId = common dso_local global i64 0, align 8
@RLS_NONE = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@RLS_NONE_ENV = common dso_local global i32 0, align 4
@row_security = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"query would be affected by row-level security policy for table \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"To disable the policy for the table's owner, use ALTER TABLE NO FORCE ROW LEVEL SECURITY.\00", align 1
@RLS_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_enable_rls(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  br label %20

18:                                               ; preds = %3
  %19 = call i64 (...) @GetUserId()
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @FirstNormalObjectId, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @RLS_NONE, align 4
  store i32 %26, i32* %4, align 4
  br label %97

27:                                               ; preds = %20
  %28 = load i32, i32* @RELOID, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @ObjectIdGetDatum(i64 %29)
  %31 = call i32 @SearchSysCache1(i32 %28, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @HeapTupleIsValid(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @RLS_NONE, align 4
  store i32 %36, i32* %4, align 4
  br label %97

37:                                               ; preds = %27
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @GETSTRUCT(i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %40, %struct.TYPE_2__** %10, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ReleaseSysCache(i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %37
  %52 = load i32, i32* @RLS_NONE, align 4
  store i32 %52, i32* %4, align 4
  br label %97

53:                                               ; preds = %37
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @has_bypassrls_privilege(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @RLS_NONE_ENV, align 4
  store i32 %58, i32* %4, align 4
  br label %97

59:                                               ; preds = %53
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @pg_class_ownercheck(i64 %60, i64 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = call i64 (...) @InNoForceRLSOperation()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68, %65
  %72 = load i32, i32* @RLS_NONE_ENV, align 4
  store i32 %72, i32* %4, align 4
  br label %97

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %59
  %75 = load i32, i32* @row_security, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %95, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @ERROR, align 4
  %82 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %83 = call i32 @errcode(i32 %82)
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @get_rel_name(i64 %84)
  %86 = call i32 @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = call i32 @errhint(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  br label %92

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i32 [ %90, %89 ], [ 0, %91 ]
  %94 = call i32 @ereport(i32 %81, i32 %93)
  br label %95

95:                                               ; preds = %92, %77, %74
  %96 = load i32, i32* @RLS_ENABLED, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %71, %57, %51, %35, %25
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i64 @GetUserId(...) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i64 @has_bypassrls_privilege(i64) #1

declare dso_local i32 @pg_class_ownercheck(i64, i64) #1

declare dso_local i64 @InNoForceRLSOperation(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @get_rel_name(i64) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
