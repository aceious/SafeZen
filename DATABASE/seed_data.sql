-- ============================================================================
-- SafeZen Seed Data
-- Run this in Neon SQL Editor to populate your tables
-- ============================================================================

-- ----------------------------------------------------------------------------
-- Doctor Data
-- ----------------------------------------------------------------------------
INSERT INTO safezen.doctor_data (name, profile_img, specialization, qualification) VALUES
('Mrs. Priya Zoting', '/src/Priya Zoting.jpg', 'Counsellor|Psychologist|Psychotherapist', 'MA ( Clinical Psychology)|MS ( Counselling & Psychotherapy)'),
('Dr. Latil Nandurkar', '/src/Dr. Lalit.jpg', 'Counselor|Psychologist', 'B.A.M.S|Master of psychological therapies|Master of science of psychology'),
('Ms. Aditi Waghmare', '/src/Aditi.jpg', 'Counselor', 'Master in clinical psychology'),
('Ms. Prerna Gaidhane', '/src/Prerna.jpg', 'Counselor', 'Masters in clinical psychology');

-- ----------------------------------------------------------------------------
-- Individual Therapy (indtherapy)
-- ----------------------------------------------------------------------------
INSERT INTO safezen.indtherapy (illness_name, illness_desc) VALUES
('ANXIETY', 'Identifies triggers and underlying causes. Teaches coping strategies and relaxation techniques. Reduces symptoms using cognitive-behavioral methods.'),
('DEPRESSION', 'Provides a supportive environment to discuss feelings. Assists in identifying and changing negative thought patterns. Encourages the development of healthy lifestyle habits'),
('EMOTIONAL DEVELOPMENT', 'Offers support during significant life events (e.g., moving, divorce). Helps in adjusting to new circumstances and building resilience. Provides strategies to cope with uncertainty and stress.'),
('POST-LOSS ADAPTAION', 'Supports the grieving process and offers a space to express emotions. Assists in finding ways to honor and remember loved ones. Helps in rebuilding life after loss.'),
('LOW SELF ESTEEM', 'Encourages self-exploration and understanding of self-worth. Provides tools to build confidence and assertiveness. Challenges negative self-perceptions and promotes positive self-talk.'),
('MOOD INSTABILITY', 'Teaches techniques for emotional regulation and mindfulness. Helps identify and understand emotional triggers. Develops strategies to manage and express emotions healthily.'),
('CHALLENGES IN SOCIAL RELATIONSHIP', 'Offers insights into relationship dynamics and patterns. Improves communication skills and conflict resolution. Supports building healthier and more fulfilling relationships.'),
('ANGER ISSUES', 'Helps identify the root causes of anger. Teaches anger management techniques and coping strategies. Promotes healthier ways of expressing and dealing with anger.'),
('FINANCIAL STRESS', 'Provides a space to discuss and manage financial anxieties. Offers strategies for budgeting and financial planning. Supports emotional well-being amidst financial challenges.'),
('ADDICTION', 'Assists in understanding the nature and triggers of addiction. Provides strategies for managing cravings and avoiding relapse. Supports recovery through behavioral changes and support networks.'),
('COPING WITH MIDLIFE CHALLENGES', 'Offers a space to explore identity and life purpose. Helps in setting and achieving new life goals. Supports navigating the emotional and psychological aspects of midlife.'),
('SELF-INJURIOUS THOUGHTS', 'Provides immediate support and intervention. Helps in developing safety plans and coping mechanisms. Offers ongoing support to address underlying issues.'),
('WORKPLACE PRESSURE', 'Assists in managing work or school-related pressures. Provides strategies for time management and productivity. Supports career planning and academic success.'),
('UNRESOLVED LIFE ISSUES', 'Helps in identifying and breaking negative patterns. Provides tools to implement lasting behavioral changes. Encourages self-reflection and personal growth.'),
('Creating a secure environment', 'Offers a non-judgmental and confidential environment. Supports processing and healing from past trauma. Encourages the development of healthy coping mechanisms.');

-- ----------------------------------------------------------------------------
-- Relationship Therapy (reltherapy)
-- ----------------------------------------------------------------------------
INSERT INTO safezen.reltherapy (relillness_name, relillness_desc) VALUES
('Couples Counseling', 'Pre-Marital Counseling: Prepares couples for marriage by addressing issues and setting expectations. Marriage Counseling: Helps couples resolve conflicts, improve communication, and reconnect. Conflict Resolution: Teaches effective conflict management and problem-solving skills.'),
('Family Counseling', 'Parent-Child: Improves communication and understanding between parents and children. Blended Families: Guides families in navigating challenges of merging units. Siblings: Resolves conflicts and strengthens sibling bonds.'),
('Individual Relationship Counseling', 'Self-Esteem: Boosts confidence to enhance relationships. Dating: Guides individuals in navigating dating challenges. Breakups: Supports healing and moving on from past relationships.'),
('Specialized Relationship Counseling', 'LGBTQ+: Supports unique challenges for individuals and couples. Intercultural: Helps navigate cultural differences and build understanding. Long-Distance: Provides strategies to maintain intimacy and connection.');
