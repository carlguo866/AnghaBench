; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_daemon_debug.c_print_create_attributes.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_daemon_debug.c_print_create_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_debug_level = common dso_local global i32 0, align 4
@dlog_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"create attributes: \00", align 1
@FILE_DIRECTORY_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"DIRECTORY_FILE \00", align 1
@FILE_NON_DIRECTORY_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"NON_DIRECTORY_FILE \00", align 1
@FILE_WRITE_THROUGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"WRITE_THROUGH \00", align 1
@FILE_SEQUENTIAL_ONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"SEQUENTIAL_ONLY \00", align 1
@FILE_RANDOM_ACCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"RANDOM_ACCESS \00", align 1
@FILE_NO_INTERMEDIATE_BUFFERING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"NO_INTERMEDIATE_BUFFERING \00", align 1
@FILE_SYNCHRONOUS_IO_ALERT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"SYNCHRONOUS_IO_ALERT \00", align 1
@FILE_SYNCHRONOUS_IO_NONALERT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"SYNCHRONOUS_IO_NONALERT \00", align 1
@FILE_CREATE_TREE_CONNECTION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"CREATE_TREE_CONNECTION \00", align 1
@FILE_COMPLETE_IF_OPLOCKED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"COMPLETE_IF_OPLOCKED \00", align 1
@FILE_NO_EA_KNOWLEDGE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"NO_EA_KNOWLEDGE \00", align 1
@FILE_OPEN_REPARSE_POINT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"OPEN_REPARSE_POINT \00", align 1
@FILE_DELETE_ON_CLOSE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"DELETE_ON_CLOSE \00", align 1
@FILE_OPEN_BY_FILE_ID = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"OPEN_BY_FILE_ID \00", align 1
@FILE_OPEN_FOR_BACKUP_INTENT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"OPEN_FOR_BACKUP_INTENT \00", align 1
@FILE_RESERVE_OPFILTER = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"RESERVE_OPFILTER\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_create_attributes(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @g_debug_level, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %142

9:                                                ; preds = %2
  %10 = load i32, i32* @dlog_file, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @FILE_DIRECTORY_FILE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32, i32* @dlog_file, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %9
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @FILE_NON_DIRECTORY_FILE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @dlog_file, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @FILE_WRITE_THROUGH, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @dlog_file, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @FILE_SEQUENTIAL_ONLY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @dlog_file, align 4
  %42 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @FILE_RANDOM_ACCESS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @dlog_file, align 4
  %50 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @FILE_NO_INTERMEDIATE_BUFFERING, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @dlog_file, align 4
  %58 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @FILE_SYNCHRONOUS_IO_ALERT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @dlog_file, align 4
  %66 = call i32 @fprintf(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @FILE_SYNCHRONOUS_IO_NONALERT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @dlog_file, align 4
  %74 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @FILE_CREATE_TREE_CONNECTION, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @dlog_file, align 4
  %82 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @FILE_COMPLETE_IF_OPLOCKED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @dlog_file, align 4
  %90 = call i32 @fprintf(i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @FILE_NO_EA_KNOWLEDGE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @dlog_file, align 4
  %98 = call i32 @fprintf(i32 %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @FILE_OPEN_REPARSE_POINT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* @dlog_file, align 4
  %106 = call i32 @fprintf(i32 %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %99
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @FILE_DELETE_ON_CLOSE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* @dlog_file, align 4
  %114 = call i32 @fprintf(i32 %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @FILE_OPEN_BY_FILE_ID, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* @dlog_file, align 4
  %122 = call i32 @fprintf(i32 %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %115
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @FILE_OPEN_FOR_BACKUP_INTENT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* @dlog_file, align 4
  %130 = call i32 @fprintf(i32 %129, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %123
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @FILE_RESERVE_OPFILTER, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32, i32* @dlog_file, align 4
  %138 = call i32 @fprintf(i32 %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %131
  %140 = load i32, i32* @dlog_file, align 4
  %141 = call i32 @fprintf(i32 %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
