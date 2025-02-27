; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/index/extr_genam.c_BuildIndexValueDescription.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/index/extr_genam.c_BuildIndexValueDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64* }
%struct.TYPE_13__ = type { i8* }

@InvalidOid = common dso_local global i32 0, align 4
@RLS_ENABLED = common dso_local global i64 0, align 8
@ACL_SELECT = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@InvalidAttrNumber = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"(%s)=(\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @BuildIndexValueDescription(%struct.TYPE_14__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = call i64 @RelationGetRelid(%struct.TYPE_14__* %20)
  store i64 %21, i64* %13, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = call i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_14__* %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %9, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = load i64, i64* %14, align 8
  %38 = load i32, i32* @InvalidOid, align 4
  %39 = call i64 @check_enable_rls(i64 %37, i32 %38, i32 1)
  %40 = load i64, i64* @RLS_ENABLED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %130

43:                                               ; preds = %3
  %44 = load i64, i64* %14, align 8
  %45 = call i32 (...) @GetUserId()
  %46 = load i32, i32* @ACL_SELECT, align 4
  %47 = call i64 @pg_class_aclcheck(i64 %44, i32 %45, i32 %46)
  store i64 %47, i64* %15, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* @ACLCHECK_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %82

51:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %78, %51
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %52
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %16, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* @InvalidAttrNumber, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %56
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %16, align 8
  %71 = call i32 (...) @GetUserId()
  %72 = load i32, i32* @ACL_SELECT, align 4
  %73 = call i64 @pg_attribute_aclcheck(i64 %69, i64 %70, i32 %71, i32 %72)
  %74 = load i64, i64* @ACLCHECK_OK, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68, %56
  store i8* null, i8** %4, align 8
  br label %130

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %52

81:                                               ; preds = %52
  br label %82

82:                                               ; preds = %81, %43
  %83 = call i32 @initStringInfo(%struct.TYPE_13__* %8)
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @pg_get_indexdef_columns(i64 %84, i32 1)
  %86 = call i32 @appendStringInfo(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %85)
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %123, %82
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %126

91:                                               ; preds = %87
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %115

99:                                               ; preds = %91
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @getTypeOutputInfo(i32 %106, i64* %18, i32* %19)
  %108 = load i64, i64* %18, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @OidOutputFunctionCall(i64 %108, i32 %113)
  store i8* %114, i8** %17, align 8
  br label %115

115:                                              ; preds = %99, %98
  %116 = load i32, i32* %11, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call i32 @appendStringInfoString(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %115
  %121 = load i8*, i8** %17, align 8
  %122 = call i32 @appendStringInfoString(%struct.TYPE_13__* %8, i8* %121)
  br label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %87

126:                                              ; preds = %87
  %127 = call i32 @appendStringInfoChar(%struct.TYPE_13__* %8, i8 signext 41)
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %4, align 8
  br label %130

130:                                              ; preds = %126, %76, %42
  %131 = load i8*, i8** %4, align 8
  ret i8* %131
}

declare dso_local i64 @RelationGetRelid(%struct.TYPE_14__*) #1

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_14__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @check_enable_rls(i64, i32, i32) #1

declare dso_local i64 @pg_class_aclcheck(i64, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i64 @pg_attribute_aclcheck(i64, i64, i32, i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_13__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @pg_get_indexdef_columns(i64, i32) #1

declare dso_local i32 @getTypeOutputInfo(i32, i64*, i32*) #1

declare dso_local i8* @OidOutputFunctionCall(i64, i32) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_13__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
